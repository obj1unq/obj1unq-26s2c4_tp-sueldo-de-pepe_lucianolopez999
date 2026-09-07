        object pepe {
            var tipoDeMonto = ""
            var diasAusentados = 0
            method esGerente(esGerente) {
                sueldoNeto.esGerente(esGerente)
            }
            method tipoDeMonto(montoDe) 
            {
                tipoDeMonto = montoDe
            }
            method bonoPorResultados() {
                bonoResultado.bonoPorResultados(sueldoNeto.sueldoNeto(), tipoDeMonto)
            }

            method diasDeAusenciaTotales(diasDeAusencia)
            {
                diasAusentados = diasDeAusencia
            }
            method bonoPorPresentismo(tipoDeBono)
            {
                bonoPresentismo.bonoPorPresentismo2(diasAusentados, sueldoNeto.sueldoNeto(), tipoDeBono)
            }


            method sueldoFinal() {
                return sueldoNeto.sueldoNeto() + bonoResultado.bonoResultado() + bonoPresentismo.bonoPresentismo()
            }
        }

    object sueldoNeto {
            var _neto_ = 0
            method esGerente(esGerente) {
                if(esGerente)  _neto_ = 15000 else _neto_ = 20000
            }
            method sueldoNeto() {
                return _neto_
            }
    }
    object bonoResultado 
    {
            var _bonoResultado_ = 0
            const _Monto_fijo_ = 800

            method bonoPorResultados(neto, tipoDeMonto) {
                if(tipoDeMonto == "fijo") {
                    _bonoResultado_ = _Monto_fijo_
                }else{
                    self.montoPorcentaje(neto, tipoDeMonto)
                }

            }
            method montoPorcentaje(neto, tipoDeMonto) {
                if(tipoDeMonto == "porcentaje") {
                    _bonoResultado_ = (neto * 10) / 100
                }
            }
            method bonoResultado() {
                return _bonoResultado_
            }

    }

    object bonoPresentismo{
            var _Normal_ = 0
            var _Ajuste_ = 0
            var _Demagógico_ = 0
            const _Nulo_ = 0

            method bonoPorPresentismo2(diasAusentados, neto, tipoDeBono) {

            }
            method Normal(diasAusentados)
            {
                if(diasAusentados == 0) {
                    _Normal_ = 2000
                }else{
                    self.NormalUnDiaDeAusencia(diasAusentados)
                }
            }
            method NormalUnDiaDeAusencia(diasAusentados)
            {
                if(diasAusentados == 1) _Normal_ = 1000 else _Normal_ = 0
            }
            method Ajuste(diasAusentados)
            {
                if(diasAusentados == 0) _Ajuste_ = 100 else _Ajuste_ = 0

            }
            method Demagogico(neto)
            {
                if(neto < 18000) _Demagógico_ = 500 else _Demagógico_ = 300
            }
            method Nulo()
            {
                
            }
        method bonoPresentismo() {
                return _Normal_ + _Ajuste_ + _Demagógico_ + _Nulo_
            } 

