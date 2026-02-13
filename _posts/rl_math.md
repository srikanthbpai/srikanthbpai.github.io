# Mathematical Foundations of Reinforcement Learning: From Bellman to Q-Learning Convergence

Reinforcement Learning (RL) sits at the intersection of control theory, dynamic programming, and machine learning. In this post, we'll build up the mathematical foundations rigorously, starting from the basic problem formulation and culminating in a convergence proof for Q-learning using the Banach fixed-point theorem.

## 1. Problem Setup: The Gridworld Environment

### 1.1 Markov Decision Process (MDP) Formulation

A Markov Decision Process is defined by the tuple $(\mathcal{S}, \mathcal{A}, P, R, \gamma)$ where:

- $\mathcal{S}$: State space
- $\mathcal{A}$: Action space  
- $P(s'|s,a)$: Transition probability from state $s$ to $s'$ under action $a$
- $R(s,a,s')$: Reward function
- $\gamma \in [0,1)$: Discount factor

### 1.2 The Gridworld Problem

Consider a $3 \times 3$ gridworld where:
- States: $\mathcal{S} = \{(i,j) : i,j \in \{0,1,2\}\}$
- Actions: $\mathcal{A} = \{\text{up, down, left, right}\}$
- Goal state: $(2,2)$ with reward $+10$
- Obstacle: $(1,1)$ (impassable)
- All other transitions: reward $-1$

**Hand Calculation Example:**
Starting from state $(0,0)$, taking action "right":
- Next state: $(0,1)$ with probability $1.0$
- Reward: $R((0,0), \text{right}, (0,1)) = -1$

```python
import numpy as np
import matplotlib.pyplot as plt
from collections import defaultdict

class GridWorld:
    def __init__(self, size=3):
        self.size = size
        self.states = [(i, j) for i in range(size) for j in range(size)]
        self.actions = ['up', 'down', 'left', 'right']
        self.goal = (2, 2)
        self.obstacle = (1, 1)
        
        # Remove obstacle from valid states
        self.states = [s for s in self.states if s != self.obstacle]
        
    def get_next_state(self, state, action):
        """Deterministic transitions"""
        i, j = state
        
        if action == 'up':
            next_state = (max(0, i-1), j)
        elif action == 'down':
            next_state = (min(self.size-1, i+1), j)
        elif action == 'left':
            next_state = (i, max(0, j-1))
        elif action == 'right':
            next_state = (i, min(self.size-1, j+1))
            
        # Can't move into obstacle
        if next_state == self.obstacle:
            return state
            
        return next_state
    
    def get_reward(self, state, action, next_state):
        """Reward function"""
        if next_state == self.goal:
            return 10
        return -1
    
    def is_terminal(self, state):
        return state == self.goal

# Create environment and test
env = GridWorld()
print("States:", env.states)
print("Transition example: (0,0) + 'right' =", env.get_next_state((0,0), 'right'))
print("Reward for reaching goal:", env.get_reward((2,1), 'right', (2,2)))
```

## 2. The Q-Function and Bellman Recursion

### 2.1 Value Functions

The **state-value function** under policy $\pi$ is:
$$V^\pi(s) = \mathbb{E}_\pi\left[\sum_{t=0}^{\infty} \gamma^t R_{t+1} \mid S_0 = s\right]$$

The **action-value function** (Q-function) under policy $\pi$ is:
$$Q^\pi(s,a) = \mathbb{E}_\pi\left[\sum_{t=0}^{\infty} \gamma^t R_{t+1} \mid S_0 = s, A_0 = a\right]$$

### 2.2 Deriving the Bellman Equation for Q

**Derivation:**
Starting from the definition:
$$Q^\pi(s,a) = \mathbb{E}_\pi\left[R_{t+1} + \gamma \sum_{k=0}^{\infty} \gamma^k R_{t+2+k} \mid S_0 = s, A_0 = a\right]$$

Using the Markov property:
$$Q^\pi(s,a) = \mathbb{E}\left[R_{t+1} + \gamma Q^\pi(S_{t+1}, A_{t+1}) \mid S_t = s, A_t = a\right]$$

Expanding the expectation:
$$Q^\pi(s,a) = \sum_{s'} P(s'|s,a) \left[R(s,a,s') + \gamma \sum_{a'} \pi(a'|s') Q^\pi(s',a')\right]$$

**Hand Calculation Example:**
For state $(0,0)$, action "right", with uniform random policy ($\pi(a|s) = 0.25$ for all $a$):

$$Q^\pi((0,0), \text{right}) = R((0,0), \text{right}, (0,1)) + \gamma \sum_{a'} 0.25 \cdot Q^\pi((0,1), a')$$
$$= -1 + 0.9 \times 0.25 \times [Q^\pi((0,1), \text{up}) + Q^\pi((0,1), \text{down}) + \cdots]$$

```python
def bellman_backup_q(env, Q, pi, state, action, gamma=0.9):
    """Single Bellman backup for Q-function"""
    next_state = env.get_next_state(state, action)
    reward = env.get_reward(state, action, next_state)
    
    if env.is_terminal(next_state):
        return reward
    
    # Expected Q-value under policy pi
    expected_q = sum(pi[next_state][a] * Q[next_state][a] 
                     for a in env.actions)
    
    return reward + gamma * expected_q

# Initialize Q-function and uniform policy
Q = defaultdict(lambda: defaultdict(float))
pi = defaultdict(lambda: defaultdict(lambda: 0.25))  # Uniform policy

# Example calculation
state, action = (0, 0), 'right'
q_value = bellman_backup_q(env, Q, pi, state, action)
print(f"Q({state}, {action}) = {q_value}")
```

## 3. Bellman Optimality Equations

> **Theorem 1 (Bellman Optimality Equation):**  
> The optimal Q-function $Q^*$ satisfies:
> $$Q^*(s,a) = \sum_{s'} P(s'|s,a) \left[R(s,a,s') + \gamma \max_{a'} Q^*(s',a')\right]$$

**Proof:**
Let $\pi^*$ be an optimal policy. Then:
$$Q^*(s,a) = Q^{\pi^*}(s,a) = \sum_{s'} P(s'|s,a) \left[R(s,a,s') + \gamma \sum_{a'} \pi^*(a'|s') Q^{\pi^*}(s',a')\right]$$

Since $\pi^*$ is optimal, $\pi^*(a'|s') = 1$ for $a' = \arg\max_{a''} Q^*(s',a'')$ and $0$ otherwise:
$$Q^*(s,a) = \sum_{s'} P(s'|s,a) \left[R(s,a,s') + \gamma \max_{a'} Q^*(s',a')\right] \quad \square$$

> **Theorem 2 (Converse):**  
> If $Q$ satisfies the Bellman optimality equation, then the greedy policy $\pi(s) = \arg\max_a Q(s,a)$ is optimal.

**Proof Sketch:**
If $Q$ satisfies the Bellman optimality equation, then for the greedy policy $\pi$:
$$Q(s,a) = \mathbb{E}[R + \gamma \max_{a'} Q(S',a') \mid s,a] = \mathbb{E}[R + \gamma Q(S',\pi(S')) \mid s,a] = Q^\pi(s,a)$$

This shows $Q = Q^\pi$, and since the greedy policy achieves the maximum at each step, $\pi$ is optimal. $\square$

**Hand Calculation Example:**
For our gridworld, at state $(2,1)$:
- Action "right" leads to goal: $Q^*((2,1), \text{right}) = 10 + 0.9 \times 0 = 10$
- Action "up" leads to $(1,1)$ (blocked): $Q^*((2,1), \text{up}) = -1 + 0.9 \times Q^*((2,1))$

```python
def bellman_optimality_backup(env, Q, state, action, gamma=0.9):
    """Bellman optimality backup"""
    next_state = env.get_next_state(state, action)
    reward = env.get_reward(state, action, next_state)
    
    if env.is_terminal(next_state):
        return reward
    
    # Max Q-value over all actions
    max_q = max(Q[next_state][a] for a in env.actions)
    return reward + gamma * max_q

# Value iteration to find optimal Q
def value_iteration(env, gamma=0.9, theta=1e-6, max_iter=1000):
    Q = defaultdict(lambda: defaultdict(float))
    
    for iteration in range(max_iter):
        delta = 0
        for state in env.states:
            if env.is_terminal(state):
                continue
            for action in env.actions:
                old_q = Q[state][action]
                Q[state][action] = bellman_optimality_backup(env, Q, state, action, gamma)
                delta = max(delta, abs(old_q - Q[state][action]))
        
        if delta < theta:
            print(f"Converged after {iteration + 1} iterations")
            break
    
    return Q

# Find optimal Q-function
Q_star = value_iteration(env)
print("Optimal Q-values for state (2,1):")
for action in env.actions:
    print(f"  Q*((2,1), {action}) = {Q_star[(2,1)][action]:.2f}")
```

## 4. Squared Bellman Error and Q-Learning

### 4.1 The Squared Bellman Error

Define the **Bellman error** for a Q-function as:
$$\delta(s,a) = Q(s,a) - \left(R(s,a) + \gamma \max_{a'} Q(s',a')\right)$$

The **squared Bellman error** objective is:
$$L(Q) = \mathbb{E}_{(s,a) \sim \rho}\left[\delta(s,a)^2\right]$$

where $\rho$ is some distribution over state-action pairs.

### 4.2 Deriving Q-Learning as Semi-Gradient Descent

Taking the gradient with respect to $Q(s,a)$:
$$\frac{\partial L}{\partial Q(s,a)} = 2\mathbb{E}\left[\delta(s,a) \cdot \frac{\partial \delta(s,a)}{\partial Q(s,a)}\right]$$

Note that:
$$\frac{\partial \delta(s,a)}{\partial Q(s,a)} = 1 - \gamma \frac{\partial}{\partial Q(s,a)}\max_{a'} Q(s',a')$$

The key insight is that Q-learning treats the target $R + \gamma \max_{a'} Q(s',a')$ as **fixed** (hence "semi-gradient"):
$$\frac{\partial \delta(s,a)}{\partial Q(s,a)} \approx 1$$

This gives us the **Q-learning update**:

> **Theorem 3 (Q-Learning Update Rule):**  
> The Q-learning update is semi-gradient descent on the squared Bellman error:
> $$Q(s,a) \leftarrow Q(s,a) - \alpha \cdot \delta(s,a)$$
> $$Q(s,a) \leftarrow Q(s,a) + \alpha \left[R + \gamma \max_{a'} Q(s',a') - Q(s,a)\right]$$

**Hand Calculation Example:**
Starting with $Q((0,0), \text{right}) = 0$, observing transition $(0,0) \xrightarrow{\text{right}} (0,1)$ with reward $-1$:

Assume $\max_{a'} Q((0,1), a') = 2.5$, $\alpha = 0.1$:
$$Q((0,0), \text{right}) \leftarrow 0 + 0.1 \times [-1 + 0.9 \times 2.5 - 0] = 0.1 \times 1.25 = 0.125$$

```python
def q_learning_update(Q, state, action, reward, next_state, env, alpha=0.1, gamma=0.9):
    """Single Q-learning update"""
    if env.is_terminal(next_state):
        target = reward
    else:
        max_q_next = max(Q[next_state][a] for a in env.actions)
        target = reward + gamma * max_q_next
    
    # Q-learning update
    td_error = target - Q[state][action]
    Q[state][action] += alpha * td_error
    
    return td_error

# Simulate Q-learning
def q_learning(env, num_episodes=1000, alpha=0.1, gamma=0.9, epsilon=0.1):
    Q = defaultdict(lambda: defaultdict(float))
    
    for episode in range(num_episodes):
        state = (0, 0)  # Start state
        
        while not env.is_terminal(state):
            # Epsilon-greedy action selection
            if np.random.random() < epsilon:
                action = np.random.choice(env.actions)
            else:
                action = max(env.actions, key=lambda a: Q[state][a])
            
            next_state = env.get_next_state(state, action)
            reward = env.get_reward(state, action, next_state)
            
            # Q-learning update
            q_learning_update(Q, state, action, reward, next_state, env, alpha, gamma)
            
            state = next_state
    
    return Q

# Run Q-learning
Q_learned = q_learning(env, num_episodes=5000)
print("Learned Q-values for state (0,0):")
for action in env.actions:
    print(f"  Q((0,0), {action}) = {Q_learned[(0,0)][action]:.3f}")
```

## 5. Convergence Analysis: Q-Learning as a Contraction Mapping

### 5.1 The Bellman Operator

Define the **Bellman operator** $T: \mathbb{R}^{|\mathcal{S}||\mathcal{A}|} \to \mathbb{R}^{|\mathcal{S}||\mathcal{A}|}$ as:
$$(TQ)(s,a) = \sum_{s'} P(s'|s,a) \left[R(s,a,s') + \gamma \max_{a'} Q(s',a')\right]$$

For deterministic environments (like our gridworld), this simplifies to:
$$(TQ)(s,a) = R(s,a,s') + \gamma \max_{a'} Q(s',a')$$

where $s' = f(s,a)$ is the deterministic transition function.

### 5.2 Contraction Property

> **Theorem 4 (Bellman Operator is a Contraction):**  
> Under the supremum norm $\|Q\|_\infty = \max_{s,a} |Q(s,a)|$, the Bellman operator $T$ is a $\gamma$-contraction:
> $$\|TQ_1 - TQ_2\|_\infty \leq \gamma \|Q_1 - Q_2\|_\infty$$

**Proof:**
For any $(s,a)$:
\begin{align}
|(TQ_1)(s,a) - (TQ_2)(s,a)| &= \left|\gamma \max_{a'} Q_1(s',a') - \gamma \max_{a'} Q_2(s',a')\right|\\
&= \gamma \left|\max_{a'} Q_1(s',a') - \max_{a'} Q_2(s',a')\right|\\
&\leq \gamma \max_{a'} |Q_1(s',a') - Q_2(s',a')|\\
&\leq \gamma \|Q_1 - Q_2\|_\infty
\end{align}

The inequality $|\max_i x_i - \max_i y_i| \leq \max_i |x_i - y_i|$ follows from the fact that the max function is 1-Lipschitz. $\square$

### 5.3 Convergence via Banach Fixed-Point Theorem

> **Theorem 5 (Q-Learning Convergence):**  
> In deterministic environments, Q-learning converges to the unique optimal Q-function $Q^*$.

**Proof:**
1. **Complete metric space**: $(\mathbb{R}^{|\mathcal{S}||\mathcal{A}|}, \|\cdot\|_\infty)$ is complete.

2. **Contraction mapping**: By Theorem 4, $T$ is a $\gamma$-contraction with $\gamma < 1$.

3. **Banach fixed-point theorem**: There exists a unique fixed point $Q^*$ such that $TQ^* = Q^*$.

4. **Fixed point is optimal**: The fixed-point equation $Q^* = TQ^*$ is exactly the Bellman optimality equation.

5. **Q-learning convergence**: Q-learning implements stochastic approximation of the operator $T$. Under standard conditions (appropriate learning rate schedule), it converges to the fixed point $Q^*$. $\square$

**Hand Calculation Example:**
Consider two Q-functions that differ only at $(0,0)$:
- $Q_1((0,0), \text{right}) = 5$, $Q_2((0,0), \text{right}) = 3$
- All other values identical

After applying $T$:
- $(TQ_1)((0,0), \text{right}) = -1 + 0.9 \times \max Q_1((0,1), \cdot)$
- $(TQ_2)((0,0), \text{right}) = -1 + 0.9 \times \max Q_2((0,1), \cdot)$

The difference is scaled by $\gamma = 0.9$, confirming contraction.

```python
def bellman_operator(env, Q, gamma=0.9):
    """Apply Bellman operator to entire Q-function"""
    TQ = defaultdict(lambda: defaultdict(float))
    
    for state in env.states:
        if env.is_terminal(state):
            continue
        for action in env.actions:
            TQ[state][action] = bellman_optimality_backup(env, Q, state, action, gamma)
    
    return TQ

def q_norm_infinity(Q, env):
    """Compute infinity norm of Q-function"""
    return max(abs(Q[s][a]) for s in env.states for a in env.actions)

# Demonstrate contraction property
Q1 = defaultdict(lambda: defaultdict(float))
Q2 = defaultdict(lambda: defaultdict(float))

# Make them differ at one point
Q1[(0,0)]['right'] = 5.0
Q2[(0,0)]['right'] = 3.0

# Compute norms before and after applying T
norm_before = abs(Q1[(0,0)]['right'] - Q2[(0,0)]['right'])
TQ1 = bellman_operator(env, Q1)
TQ2 = bellman_operator(env, Q2)

norm_after = abs(TQ1[(0,0)]['right'] - TQ2[(0,0)]['right'])

print(f"Norm before T: {norm_before}")
print(f"Norm after T: {norm_after}")
print(f"Contraction factor: {norm_after/norm_before:.3f}")
print(f"Gamma: {0.9}")
```

## Conclusion

We've built up the mathematical foundations of reinforcement learning from first principles:

1. **MDP Formulation**: Established the gridworld as a concrete example
2. **Bellman Recursion**: Derived the fundamental recursive relationship for Q-functions
3. **Optimality Theory**: Proved the Bellman optimality equation and its converse
4. **Q-Learning**: Showed how it emerges from semi-gradient descent on squared Bellman error
5. **Convergence**: Proved convergence using the Banach fixed-point theorem

The key insight is that Q-learning works because the Bellman operator is a contraction mapping in deterministic environments. This mathematical guarantee, combined with proper exploration and learning rate schedules, ensures convergence to the optimal policy.

The framework extends naturally to function approximation, stochastic environments, and continuous spaces, though additional technical conditions are required for convergence guarantees in those settings.

---

*This post demonstrates the beautiful interplay between dynamic programming, functional analysis, and machine learning that underlies modern reinforcement learning algorithms.*