run: compile .run
.run:
	cd src && java SchoolManagementSystem

compile: .compile
.compile:
	javac src/*.java

setup: .setup
.setup:
	@mkdir -p ~/opt
	@wget https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-5.1.47.tar.gz -O ~/opt/mysql-connector-java-5.1.47.tar.gz
	@cd ~/opt && tar -xf mysql-connector-java-5.1.47.tar.gz
	@echo "\n\n\n"
	@echo "-------------------------------------------------------------"
	@echo "Add the following to your bashrc:"
	@echo 'export CLASSPATH=~/opt/mysql-connector-java-5.1.47/mysql-connector-java-5.1.47-bin.jar:$$CLASSPATH'

javadoc: .javadoc
.javadoc:
	javadoc src/*.java -d documentation

documentation: .javadoc .documentation
.documentation:
	google-chrome documentation/SchoolManagementSystem.html

clean:
	$(RM) src/*.class
	find documentation/ ! -name "README.md" ! -name ".gitignore" -type f -delete
	$(RM) -r documentation/jquery documentation/resources documentation/element