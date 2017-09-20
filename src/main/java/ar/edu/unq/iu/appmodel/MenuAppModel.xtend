package ar.edu.unq.iu.appmodel

import ar.edu.unq.iu.repo.RepoPizza
import ar.edu.unq.iu.modelo.Pizza
import org.uqbar.commons.applicationContext.ApplicationContext
import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors
import java.io.Serializable
import java.util.List
import ar.edu.unq.iu.repo.RepoIngrediente
import ar.edu.unq.iu.modelo.Ingrediente

@Observable
@Accessors
class MenuAppModel implements Serializable {

    def List<Pizza> getPizzas() {
        repoPizza.objects
    }

    def List<Ingrediente> getIngredientess() {
        repoIngrediente.objects
    }

    def RepoPizza getRepoPizza() {
        ApplicationContext.instance.getSingleton(Pizza) as RepoPizza
    }

    def RepoIngrediente getRepoIngrediente() {
        ApplicationContext.instance.getSingleton(Ingrediente) as RepoIngrediente
    }

}