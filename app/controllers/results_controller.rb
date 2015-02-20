class ResultsController < ApplicationController
before_filter :authenticate_user!
load_and_authorize_resource
# GET /results
# GET /results.json
def index
end
# GET /results/1
# GET /results/1.json
def show
end
# GET /results/new
def new
@result = Result.new
end
# GET /results/1/edit
def edit
end
# POST /results
# POST /results.json
def create
respond_to do |format|
if @result.save
format.html { redirect_to @result, notice: 'Dodano wyniki.' }
format.json { render :show, status: :created, location: @result }
else
format.html { render :new }
format.json { render json: @result.errors, status: :unprocessable_entity }
end
end
end
# PATCH/PUT /results/1
# PATCH/PUT /results/1.json
def update
respond_to do |format|
if @result.update(result_params)
format.html { redirect_to @result, notice: 'Zmieniono wyniki.' }
format.json { render :show, status: :ok, location: @result }
else
format.html { render :edit }
format.json { render json: @result.errors, status: :unprocessable_entity }
end
end
end
# DELETE /results/1
# DELETE /results/1.json
def destroy
@result.destroy
respond_to do |format|
format.html { redirect_to results_url, notice: 'Wynik usunięto.' }
format.json { head :no_content }
end
end

def sum
  @result = Result.select('committee_id, sum(amount) as wynik').group('committee_id')
  

end
   

  private

    def result_params
      params.require(:result).permit(:committee_id, :constituency_id, :amount)
    end
end


