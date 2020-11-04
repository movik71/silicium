module Silicium
  module Sparse
    # here goes the Sparse class
    class SparseMatrix
      # #
      # A static method for initializing sparse matrix from a regular one
      # @param [Array] mat - Source matrix for conversion
      def self.sparse(mat)
        new = SparseMatrix.new(mat.count, mat[0].count)
        i = 0
        mat.each do |row|
          j = 0
          row.each do |elem|
            new.add(i, j, elem) unless elem.zero?
            j += 1
          end
          i += 1
        end
        new
      end
    end
  end
end
