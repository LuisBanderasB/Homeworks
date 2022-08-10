# local example
def define_global_variable 
    $global = true
end
def read_global_variable
    puts $global
end
define_global_variable
read_global_variable
# controlador articulos
class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    def show ()
    end
    def index ()
        $variable_global = "HOLA MUNDO"
        @articles = Article.all
    end
    def new ()
        puts "------- LA VARIABLE GLOBAL ES: #{$variable_global}"
        # so the first time the page loads, it does not generate any error
        @article = Article.new()
    end
    def create ()
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was created successfully"
            # redirect_to article_path(@article)
            redirect_to @article
        else
            render "new"
            # redirect_to new_article_path # no funciona porque al redireccionar se pierden los parametros
        end
    end
    def update ()
        if @article.update(article_params)
            flash[:notice] = "Article was updated successfully"
            redirect_to @article
        else
            render "edit"
        end
    end
    def edit ()
    end
    def destroy ()
        @article.destroy
        redirect_to articles_path, status: :see_other
    end
    # solo usado dentro de este controlador
    private
    
    def set_article 
        @article = Article.find(params[:id])
    end
    def article_params
        params.require(:article).permit(:title, :description)
    end
end
# controlador pages
class PagesController < ApplicationController
    def home ()
        puts "------- LA VARIABLE GLOBAL ES: #{$variable_global}"
    end
    def about()
    end
end