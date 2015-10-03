
scaffold:
	# Your scaffold here
	rails g scaffold offer product:string title:string description:string
	rails g scaffold project name:string category:string goal:integer current_money:integer
	rails g scaffold company razon_social:string rut:string img_url:string email:string giro:string direccion:string comuna:string coordenadas:string descripcion:text 
	rails g scaffold notice actions:string price:integer

destroy:
	# Your destroy here
	rails d scaffold offer
	rails d scaffold project
	rails d scaffold company
	rails d scaffold notice

migrate:
	rake db:drop:all
	rake db:create
	rake db:migrate
	rake db:seed

redo: destroy scaffold migrate
	rails s
