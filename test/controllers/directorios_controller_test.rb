require 'test_helper'

class DirectoriosControllerTest < ActionController::TestCase
  setup do
    @directorio = directorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create directorio" do
    assert_difference('Directorio.count') do
      post :create, directorio: { area: @directorio.area, categoria: @directorio.categoria, celular: @directorio.celular, ciudad: @directorio.ciudad, comuna: @directorio.comuna, descripcion: @directorio.descripcion, direccion: @directorio.direccion, estado: @directorio.estado, nombre: @directorio.nombre, region: @directorio.region, subcategoria: @directorio.subcategoria, telefono: @directorio.telefono, user_id: @directorio.user_id }
    end

    assert_redirected_to directorio_path(assigns(:directorio))
  end

  test "should show directorio" do
    get :show, id: @directorio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @directorio
    assert_response :success
  end

  test "should update directorio" do
    patch :update, id: @directorio, directorio: { area: @directorio.area, categoria: @directorio.categoria, celular: @directorio.celular, ciudad: @directorio.ciudad, comuna: @directorio.comuna, descripcion: @directorio.descripcion, direccion: @directorio.direccion, estado: @directorio.estado, nombre: @directorio.nombre, region: @directorio.region, subcategoria: @directorio.subcategoria, telefono: @directorio.telefono, user_id: @directorio.user_id }
    assert_redirected_to directorio_path(assigns(:directorio))
  end

  test "should destroy directorio" do
    assert_difference('Directorio.count', -1) do
      delete :destroy, id: @directorio
    end

    assert_redirected_to directorios_path
  end
end
