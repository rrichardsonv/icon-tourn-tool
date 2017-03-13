class SignupsController < ApplicationController
  def new
    @signup = Signup.new
    @tournaments = Tournament.all
    @participant = Participant.new
  end

  def create
    participant_deetz = signup_deetz[:participant]
    @participant = Participant.find_by(participant_deetz)
    if !@participant
      @participant = Participant.new(participant_deetz)
      if @participant.save
        @signup = @participant.signups.new(tournament_id: signup_deetz[:tournament_id])
        if @signup.save
          render :create
        else
          redirect_to :new
        end
      else
        redirect_to :new
      end
    else
      @signup = @participant.signups.new(tournament_id: signup_deetz[:tournament_id])
      if @signup.save
        render :create
      else
        redirect_to :new
      end
    end
  end

  def signup_deetz
    params.require(:signup).permit(:tournament_id,participant:[:tag, :pin])
  end
end
