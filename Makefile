.PHONY: frontend archive payment bench

all: frontend archive payment bench

frontend:
	cd webapp/frontend && make

archive:
	tar zcvf ansible/roles/challenge/files/webapp.tar.gz \
	--exclude webapp/frontend \
	webapp

	cd webapp/frontend/dist && tar zcvf ../../../ansible/files/frontend.tar.gz .

payment:
	cd blackbox/payment && make && cp bin/payment_linux ../../ansible/roles/benchmark/files/payment

bench:
	cd bench && make && cp bin/bench_linux ../ansible/roles/benchmark/files/bench && cp bin/benchworker_linux ../ansible/roles/benchmark/files/benchworker