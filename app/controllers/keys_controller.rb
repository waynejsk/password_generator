class KeysController < ApplicationController
  def index
    @keys = Key.all
  end

  def show
    @key = Key.find(params[:id])
  end

  def new
    @key = Key.new
  end

  def create
    @key = Key.new(key_params)
    if @key.save
      redirect_to keys_path, notice: "#{@key}を保存しました}"
    else
      render :new
    end
  end

  def edit
    @key = Key.find(params[:id])
  end

  def update
    @key = Key.find(params[:id])
    if @key.update(key_params)
      redirect_to keys_path, notice: "#{@key}を更新しました}"
    else
      render :edit
    end
  end

  private

    def key_params
      params.require(:key).permit(:key_label, :key)
    end

end
