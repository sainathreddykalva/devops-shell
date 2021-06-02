help:		##print help message
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

frontend:	##install frontend component
	@sh components/frontend.sh

mongodb:	##install mongodb component
	@sh components/mongodb.sh
catalogue:	##install catalogue component
	@sh components/catalogue.sh
redis:		##install redis component
	@sh components/redis.sh
user:		##install user component
	@sh components/user.sh
cart:		##install cart component
	@sh components/cart.sh
mysql:		##install mysql component
	@sh components/mysql.sh
shipping:	##install shipping component
	@sh components/shipping.sh
rabbitmq:	##install rabbitmq component
	@sh components/rabbitmq.sh
payment:	##install payment component
	@sh components/payment.sh

