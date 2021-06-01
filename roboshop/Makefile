help:		##print help message
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

frontend:	##install frontend component
	@sh coponents/frontend.sh

mongodb:	##install mongodb component
	@sh coponents/mongodb.sh
catalogue:	##install catalogue component
	@sh coponents/catalogue.sh
redis:		##install redis component
	@sh coponents/redis.sh
user:		##install user component
	@sh coponents/user.sh
cart:		##install cart component
	@sh coponents/cart.sh
mysql:		##install mysql component
	@sh coponents/mysql.sh
shipping:	##install shipping component
	@sh coponents/shipping.sh
rabbitmq:	##install rabbitmq component
	@sh coponents/rabbitmq.sh
payment:	##install payment component
	@sh coponents/payment.sh

