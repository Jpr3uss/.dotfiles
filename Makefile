.SILENT:
#the above line makes suppresses command echoing

linux:	clean	#linux recipe requires clean to run first
	./bin/linux.sh	#run linux.sh

clean:	#clean recipe
	./bin/cleanup.sh	#run cleanup.sh
	
