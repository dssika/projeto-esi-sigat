<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Pessoa>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Cadastro
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Cadastrar Pessoa</h2>

<script type="text/javascript">

     $(document).ready(function () {
         $("#Sigla").change(function () {
             var id = $(this).val();
             $.getJSON('<%= Url.Action("ListaCidade") %>/' + id, function (cids) {
                 var html = "";
                 $.each(cids, function (index, item) {
                     html += ("<option value='" + item.IdCidade + "'>" + item.Nome + "</option>");
                 });
                 $("#Cidades").html(html);
             });
         });
     });

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<script type="text/javascript">

    $(document).ready(function () {
        $("#idEstado").change(function () {
            listaCidade($(this).val());
        });
    });
    //ajax para a Action ListaCidade
    function listaCidade(uf) {
        $.getJSON('<%= Url.Action("ListaCidade") %>/' + uf, listaCidadeCallBack);
    }

    function listaCidadeCallBack(json) {
        //Limpar os itens que são maiores que 0
        //Ou seja: não retirar o primeiro item
        $("#idCidade :gt(0)").remove();
        $(json).each(function () {
            //adicionando as opções de acordo com o retorno
            $("#idCidade").append("<option value='" + this.Id + "'>" + this.Nome + "</option>");
        });
    }

    //Campo Data
    $(function () {
        $(".datepicker").datepicker({
            dateFormat: 'dd/mm/yy',
            dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo'],
            dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
            dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
            monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
            monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
            changeMonth: true,
            changeYear: true,
            nextText: 'Próximo',
            prevText: 'Anterior',
            showOn: "button",
            buttonImage: "../../Content/bootstrap/img/glyphicons/glyphicons_045_calendar.png",
            buttonImageOnly: true
        });
    });

    //Campos
    jQuery(function () {
        $(".larguraTelefone").mask("?(99)9999-9999");
        $(".larguraCpf").mask("?999.999.999-99");
        $(".larguraRg").mask("?9.999.999-9");
        $(".larguraCep").mask("?99999-999");
        $(".data").mask("?99/99/9999");
    });

 
     </script>
<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Dados</legend>
        <table width="80%">
              <tr>     
                 <td>

            <%: Html.LabelFor(model => model.nome) %>
            <%: Html.EditorFor(model => model.nome) %>
            <%: Html.ValidationMessageFor(model => model.nome) %>
                </td>
                <td>
            <%: Html.LabelFor(model => model.cnh) %>
            <%: Html.EditorFor(model => model.cnh) %>
            <%: Html.ValidationMessageFor(model => model.cnh) %>
                </td>
                <td>
            <%: Html.LabelFor(model => model.cpf) %>
            <%: Html.TextBoxFor(model => model.cpf)%>
            <%: Html.ValidationMessageFor(model => model.cpf) %>
                </td>
                <td>
            <%: Html.LabelFor(model => model.email) %>
            <%: Html.EditorFor(model => model.email) %>
            <%: Html.ValidationMessageFor(model => model.email) %>
                </td>
                <td>
            <%: Html.LabelFor(model => model.dataNascimento) %>
            <%: Html.EditorFor(model => model.dataNascimento) %>
            <%: Html.ValidationMessageFor(model => model.dataNascimento) %>
        </td>
        </tr>
         </table>
        </fieldset>
        <fieldset>
        <legend>Endereço</legend>

        <table width="80%">
              <tr>
                 <td>
            <%: Html.LabelFor(model => model.endereco.logradouro) %>
            <%: Html.EditorFor(model => model.endereco.logradouro) %>
            <%: Html.ValidationMessageFor(model => model.endereco.logradouro)%>
                </td>
                <td>
            <%: Html.LabelFor(model => model.endereco.bairro)%>
            <%: Html.EditorFor(model => model.endereco.bairro)%>
            <%: Html.ValidationMessageFor(model => model.endereco.bairro)%>
                </td>
                <td>
            <%: Html.LabelFor(model => model.endereco.cep)%>
            <%: Html.EditorFor(model => model.endereco.cep)%>
            <%: Html.ValidationMessageFor(model => model.endereco.cep)%>
                </td>
                <td>
            <%: Html.LabelFor(model => model.endereco.cidade.idEstado, "Estado")%>
            <%: Html.DropDownList("idEstado", "Selecione um estado")%>
            <%: Html.ValidationMessageFor(model => model.endereco.cidade.idEstado)%>
                </td>
                <td>
            <%: Html.LabelFor(model => model.endereco.idCidade, "Cidade")%>
            <%: Html.DropDownList("idCidade", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.endereco.idCidade)%>
                </td>
                </tr>
              </table>
    </fieldset>
    
    <fieldset>
        <legend>A pessoa cadastrada é Polícia Militar?</legend>
        <div align="center">
        <table width="20%">
        <tr>
        <td>
        <%: Html.RadioButtonFor(model => model.isPM, true) %> sim <br />
        </td>
        <td>
        <%: Html.RadioButtonFor(model => model.isPM, false) %> não
        </td>
        <%: Html.ValidationMessageFor(model => model.isPM) %>
        </tr>
        </table>
        </div>
        </fieldset>
        <p>
            <input type="submit" value="Cadastrar" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Voltar", "Index") %>
</div>

</asp:Content>
