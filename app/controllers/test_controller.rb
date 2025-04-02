class TestController < ApplicationController
  def hello
    @message = "Hello World"
    @test_model = TestModel.all
  end

  def create
    @test_model = TestModel.new(name: params[:name])
    @test_model.save
  end
end

