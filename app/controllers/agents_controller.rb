class AgentsController < ApplicationController
    def index
        agents = Agent.all 
        render json: agents
    end
end
