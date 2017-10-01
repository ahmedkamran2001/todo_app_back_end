class TodoController < ApplicationController
    def index
        
    end
    def show
            if params[:id]=="1"
                @task="Do Chemistry homework"
            end
            if params[:id]=="2"
                @task="Do Algebra homework"
            end
            if params[:id]=="3"
                @task="Finish NHS survey"
            end    
            if params[:id]=="4"
                @task="Finish scholarship application"
            end
            @order=params[:order]
    end
    
        def new
        end
        def create
            t = Todo.new
            t.description = params['description']
            t.order = params['order']
            t.save
            redirect_to "/todo/show/#{ t.id }"

        end
end
