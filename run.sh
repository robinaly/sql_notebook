#-v /home/robin/sql_test:/home/jovyan/work
lines = open('users.txt').readlines()[1:]
PORT = 10000
for line in lines:
				fields = line.strip().split('\t')
				name = fields [2]
				print "docker run -di -p %d:8888  -e PASSWORD=test --name %s sql_kernel" % (PORT,name)
				PORT += 1
			

