class TestController < ApplicationController
  def hello
    @message = "Hello World"
    @test_model = TestModel.new
    @received_message = TestModel.all

  end

  def create
    @test_model = TestModel.new(test_params)
    @test_model.save
  end

  def test_params
    params.require(:test_model).permit(:name)
  end
end
