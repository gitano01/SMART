class PersonaController < ApplicationController
    def index
    @personas = Persona.all
    end

    def show
    
        @persona = Persona.find(params[:id])

    end 
    
    def new
        @persona = Persona.new
    end
     
    def create
        @persona = Persona.new(persona_params)
        if @persona.save
            redirect_to :action => :index
        end
    end
    def edit
    end

    def update
    end

    private

    def persona_params
		params.require(:persona).permit(:nombre, :apellido, :edad)
    end
    
end
