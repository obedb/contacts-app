class MembersController < ApplicationController

  def index
    @staff = Member.all
    render "index.html.erb"
  end 

  def show
    staff_id = params[:id]
    @staff = Member.find_by(id: staff_id)
    render "show.html.erb"
  end 

  def new
    render "new.html.erb"
  end 

  def create
    staff = Member.new(
      name: params["name"],
      last_name: params["last_name"],
      title: params["title"],
      email: params["email"]
      )
    staff.save
    render "create.html.erb"
  end 

  def edit
    staff_id = params[:id]
    @staff = Member.find_by(id: staff_id)
    render"edit.html.erb"
  end 

  def update
    staff_id = params[:id]
    staff = Member.find_by(id: staff_id)
    staff.name = params[:name]
    staff.last_name = params[:last_name]
    staff.title = params[:title]
    staff.email = params[:email]
    staff.save
    render "update.html.erb"
  end 

  def destroy
    staff_id = params[:id]
    staff = Member.find_by(id: staff_id)
    staff.destroy
    render "destroy.html.erb"
  end 


    def search
      search_query = params[:search_input]
      @staff = Member.where("name LIKE ? OR description LIKE ?", "%#{search_query}%", "%#{search_query}%")
      if @staff.empty?
        flash[:info] = "No staff found in search"
      end
      render :index
  end
end
