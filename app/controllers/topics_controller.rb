class TopicsController < ApplicationController
  
  def new
    @topic = Topic.new
    render :new
  end
  
  # このActionを追加
  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to new_topic_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def topic_params
    params.require(:topic).permit(:title)
  end
  
  def edit
    render :edit
  end
  
  def update
    redirect_to 'topics/edit'
  end
  
  
  
  
end