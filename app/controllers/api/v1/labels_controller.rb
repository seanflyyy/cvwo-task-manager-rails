module Api 
    module V1
        class LabelsController < ApplicationController
            protect_from_forgery with: :null_session 

            def index 
                labels = Label.all

                render json: LabelSerializer.new(labels, options).serialized_json
            end 
            
            def show
                label = Label.find_by(slug: params[:slug])

                render json: LabelSerializer.new(label, options).serialized_json
            end 

            def create
                label = Label.new(label_params)

                if label.save 
                    render json: LabelSerializer.new(label).serialized_json
                else 
                    render json: {error: label.errors.messages }, status: 422
                end 
            end 

            def update
                label = Label.find_by(slug: params[:slug])

                if label.update(label_params) 
                    render json: LabelSerializer.new(label, options).serialized_json
                else 
                    render json: {error: label.errors.messages }, status: 422
                end 
            end 

            def destroy 
                label = Label.find_by(slug: params[:slug])

                if label.destroy 
                    head :no_content
                else 
                    render json: {error: label.errors.messages }, status: 422
                end 
            end 
            private 

            def label_params
                params.require(:label).permit(:title, :color)
            end 

            def options 
                @options ||= { include: %i[tasks] }
            end 
        end
    end 
end 