cd src/
llc -filetype=obj redis-server.bc
llc -filetype=obj redis-cli.bc
llc -filetype=obj redis-benchmark.bc

g++ -o redis-server -no-pie redis-server.o -lm -ldl -pthread -lrt
g++ -o redis-cli -no-pie redis-cli.o -lm -ldl -pthread -lrt
g++ -o redis-benchmark -no-pie redis-benchmark.o -lm -ldl -pthread -lrt
