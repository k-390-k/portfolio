class SoundsController < ApplicationController
  def index
    @sounds = Sound.all
  end

  def show
    @sound = Sound.find(params[:id])
  end

  def new
    @sound = Sound.new
  end

  def create
    @sound =Sound.new(sound_params)
    
    if @sound.save
      flash[:success] = "投稿完了しました！"
      redirect_to @sound
    else
      flash.now[:danger] ='投稿ができませんでした、、、'
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end
end

private

#ストロングパラメータ
def sound_params
  params.require(:sound).permit(:title,:description)
end