class KeysController < ApplicationController
  def index
    @keys = current_user.keys.all.order(created_at: :desc)
  end

  def show
    @key = current_user.keys.find(params[:id])
  end

  def new
    @key = Key.new
  end

  def create
    @key = current_user.keys.new(keys_params)
    if @key.save
      redirect_to keys_url, notice: "#{@key.key_label}を保存しました"
    else
      render :new
    end
  end

  def edit
    @key = current_user.keys.find(params[:id])
  end

  def update
    @key = current_user.keys.find(params[:id])
    if @key.update(key_params)
      redirect_to keys_url, notice: "#{@key.key_label}を更新しました"
    else
      render :edit
    end
  end

  def destroy
    @key = current_user.keys.find(params[:id])
    @key.destroy!
    redirect_to keys_url, notice: "#{@key.key_label}を削除しました"
  end

  private

    def keys_params
      params.require(:keys).permit(:key_label, :key)
    end

    def key_params
      params.require(:key).permit(:key_label, :key)
    end

end
