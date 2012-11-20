module InvitadosHelper
def background(registro)
    color = {"ROJA" => "Ce365a",
             "VERDE" => "96cb5d",
             "AZUL" => "3c5ba9"
    }
    return "<th width='22px' style='background-color: ##{color[registro.zona.descripcion]}'></th>"
end


end
