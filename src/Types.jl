module Types

using ValidatedNumerics;

immutable IntervalVector{T}
    intervals :: Array{Interval{T}, 1}
    sti :: Array{T, 1}
end

immutable Configuration{T}
  a :: Array{Interval{T}, 2}
  b :: IntervalVector{T}
  size :: Int
  sti_size :: Int
end


type Solver{T}
    current :: IntervalVector{T}
    previous :: IntervalVector{T}
    initial :: IntervalVector{T}
    system :: Configuration{T}
    roots :: Array{IntervalVector{T}, 1}
    iteration :: Int
end

immutable StopConditions
    precision :: AbstractFloat
    max_iterations :: Int
end

end
