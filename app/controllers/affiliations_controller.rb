class AffiliationsController < ApplicationController
    def index
        @affiliations = Affiliation.all
    end

    def new
        @affiliation = Affiliation.new 
    end

    def create
        affiliation = Affiliation.create affiliation_params
        redirect_to affiliations_path
    end

    def edit
        @affiliation = Affiliation.find params[:id]
    end

    def update
        affiliation = Affiliation.find params[:id]
        affiliation.update affiliation_params
        redirect_to affiliation
    end

    def show
        @affiliation = Affiliation.find params[:id]
    end

    def destroy
        affiliation = Affiliation.find params[:id]
        affiliation.destroy
        redirect_to affiliations_path
    end

    private
    def affiliation_params
        params.require(:affiliation).permit(:title, :person_id)
    end


end
