class TrainersController < ApplicationController

    def index 
        trainers = Trainer.all 
        render json: trainers, include: :pokemon
    end 

    def show
        trainer = Trainer.find_by(id: params[:id])
        render json: trainer, include: :pokemon
    end
end
