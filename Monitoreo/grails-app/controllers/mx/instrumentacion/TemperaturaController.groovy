package mx.instrumentacion



import grails.artefact.Artefact
import grails.converters.JSON
import grails.rest.RestfulController



class TemperaturaController extends RestfulController<Temperatura>
{

    static responseFormats = ['json']
    static allowedMethods = [index: "GET"]    
    def index() {
        def lista = Temperatura.list()
        render text: lista as JSON
    }
    def actual() 
    {
    	def primero = Temperatura.list([max:1 ,sort:"id", order:"desc"])
    	render text:primero as JSON
    }
}
