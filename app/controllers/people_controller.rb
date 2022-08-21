class PeopleController < ApplicationController
    def index
        @people = Person.order(params[:sort])
        @people = Person.paginate(page:params[:page])
    end

    def new
        @person = Person.new
    end

    def create
        @person = Person.create person_params
        if @person.save
            flash[:message] = "New person was created successfully"
            redirect_to root_path              
        else
            flash[:message] = "Validation Error"
            render :new
        end 
    end

    def edit
        @person = Person.find params[:id]
    end

    def update
        person = Person.find params[:id]
        person.update person_params
        redirect_to person
    end

    def show
        @person = Person.find params[:id]
    end

    def destroy
        person = Person.find params[:id]
        person.destroy
        redirect_to people_path
    end

    def search        
        @parameter = params[:search]
        @results = Person.find_by first_name: params[:search]        
    end

    def import
        Person.import(params[:file])
        redirect_to root_path
    end

    private
    def person_params
        params.require(:person).permit(:first_name, :last_name, :species, :gender, :weapon, :vehicle, :location_id, :affiliation_id)
    end
    
end
