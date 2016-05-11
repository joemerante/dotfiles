Pry.config.editor = "vim"

require 'benchmark'
def benchmark(n, &block)
	Benchmark.bm do |x|
		x.report do
			n.times { block.call }
		end
	end
end
