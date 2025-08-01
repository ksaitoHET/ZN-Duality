# ZN-Duality
## compose.jl
This script generates a set of all compositions of orbifolding, parafermionization, and stacking for the case of N=3,4.
Each operation is represented as a matrix:

```math
\displaylines{
\text{Orb}_\rho \begin{pmatrix}a\\ b\end{pmatrix} = \begin{pmatrix}-\rho b\\ -\rho^{-1}a\end{pmatrix} = \begin{pmatrix}0&-\rho\\ -\rho^{-1}&0\end{pmatrix} \begin{pmatrix}a\\ b\end{pmatrix},\\
\text{Par}_\rho \begin{pmatrix}a\\ b\end{pmatrix} = \begin{pmatrix}-a\\ -\rho^{-1}a-b\end{pmatrix} = \begin{pmatrix}-1&0\\ -\rho^{-1}&-1\end{pmatrix} \begin{pmatrix}a\\ b\end{pmatrix},\\
\text{Sta}_\rho \begin{pmatrix}a\\ b\end{pmatrix} = \begin{pmatrix}a-\rho b\\ b\end{pmatrix} = \begin{pmatrix}1&-\rho\\ 0&1\end{pmatrix} \begin{pmatrix}a\\ b\end{pmatrix}.
}
```

The results need to be reduced by identification.
