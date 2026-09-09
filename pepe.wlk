object pepe {
            var tipoDeMonto = "test"
            var tipoDeBono = ""
            var trabajaDe  = ""
            var diasAusentados = 0
            method trabajaDe(trabajo) {
                trabajaDe = trabajo
                trabajo.es()
            }
            method bonoPorResultados(tipoDeMonto) {
                tipoDeMonto = tipoDeMonto
                tipoDeMonto.bonoPor(sueldoNeto.sueldoNeto())
            }

            method diasDeAusenciaTotales(diasDeAusencia)
            {
                diasAusentados = diasDeAusencia
            }
            method bonoPorPresentismo(tipoDeBono)
            {
                tipoDeBono = tipoDeBono
                tipoDeBono.bono(diasAusentados, sueldoNeto.sueldoNeto())
            }


            method sueldoFinal() {
                return trabajo.es() + tipoDeMonto.bonoResultado() + tipoDeBono.bonoPresentismo()
            }
}

    object gerente
    {
            const _SueldoNeto_ = 15000
            method es() {
                 return _SueldoNeto_
    }
    object cadete
    {
            const _SueldoNeto_ = 20000
            method es() {
                 return _SueldoNeto_
    }
    object bonoFijo {
            var _bonoFijo_ = 0
            const _Monto_fijo_ = 800
            method bonoPor(neto) {
                _bonoFijo_ = _Monto_fijo_
            }
            method bonoResultado() {
                return _bonoFijo_
            }
    }
    object bonoPorcentaje(neto, tipoDeMonto) {
            var _bonoPorcentaje_ = 0
            method montoPorcentaje(neto) {
                    _bonoPorcentaje_ = (neto * 10) / 100
                }
            }
            method bonoResultado() {
                return _bonoPorcentaje_
            }
    }

object bonoDemagogico()
{
            var _Demagógico_ = 0
            method Bono(diasAusentados, neto)
            {
                if(neto < 18000) _Demagógico_ = 500 else _Demagógico_ = 300
            }
            method bonoPresentismo() {
                return _Demagógico_
            }
}
object bonoAjuste()
{
            var _Ajuste_ = 0
            method Bono(diasAusentados, neto)
            {
                if(diasAusentados == 0) _Ajuste_ = 100 else _Ajuste_ = 0
            }
            method bonoPresentismo() {
                return _Ajuste_
            }
}
object bonoNormal()
{
            var _Normal_ = 0
            method Bono(diasAusentados, neto)
            {
                if(diasAusentados == 0) _Normal_ = 2000 else if(diasAusentados == 1) _Normal_ = 1000 else _Normal_ = 0
            }
            method bonoPresentismo() {
                return _Normal_
            }
}

object bonoNulo()
{
            const _Nulo_ = 0
            method Bono(diasAusentados, neto)
            {
                
            }
            method bonoPresentismo() {
                return _Nulo_
            }
}
