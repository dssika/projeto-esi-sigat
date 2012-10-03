<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Pessoa>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Cadastro
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Cadastrar</h2>

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
    //chamada ajax para a Action ListaCidade
    //passando como parâmetro a Estado selecionado
    function listaCidade(uf) {
        $.getJSON('<%= Url.Action("ListaCidade") %>/' + uf, listaCidadeCallBack);
    }
    //função que irá ser chamada quando terminar
    //a chamada ajax
    function listaCidadeCallBack(json) {
        //Limpar os itens que são maiores que 0
        //Ou seja: não retirar o primeiro item
        $("#idCidade :gt(0)").remove();
        $(json).each(function () {
            //adicionando as opções de acordo com o retorno
            $("#idCidade").append("<option value='" + this.Id + "'>" + this.Nome + "</option>");
        });
    }

    //Campo Data-AdicionaDataPicker
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

    //Mascaras dos Campos
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
        <legend>Envolvido</legend>

        <fieldset>
        <legend>Dados</legend>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.nome) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.nome) %>
            <%: Html.ValidationMessageFor(model => model.nome) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.cnh) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.cnh) %>
            <%: Html.ValidationMessageFor(model => model.cnh) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.cpf) %>
        </div>
        <div class="editor-field">
        <!--%: Html.TextBoxFor(model => model.cpf, new { @class = "larguraCpf", @required = "" })%-->
         <%: Html.TextBoxFor(model => model.cpf)%>
            <!--%: Html.EditorFor(model => model.cpf) %-->
            <%: Html.ValidationMessageFor(model => model.cpf) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.email) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.email) %>
            <%: Html.ValidationMessageFor(model => model.email) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.dataNascimento) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.dataNascimento) %>
            <%: Html.ValidationMessageFor(model => model.dataNascimento) %>
        </div>
        </fieldset>
        <fieldset>
        <legend>Endereço</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.endereco.logradouro) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.endereco.logradouro) %>
            <%: Html.ValidationMessageFor(model => model.endereco.logradouro)%>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.endereco.bairro)%>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.endereco.bairro)%>
            <%: Html.ValidationMessageFor(model => model.endereco.bairro)%>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.endereco.cep)%>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.endereco.cep)%>
            <%: Html.ValidationMessageFor(model => model.endereco.cep)%>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.endereco.cidade.idEstado, "Estado")%>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idEstado", "Selecione um estado")%>
            <%: Html.ValidationMessageFor(model => model.endereco.cidade.idEstado)%>
        </div>
        
        <div class="editor-label">
            <%: Html.LabelFor(model => model.endereco.idCidade, "Cidade")%>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idCidade", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.endereco.idCidade)%>
        </div>
    </fieldset>
    <!--fieldset>
        <legend>Telefone</legend>
        <div class="editor-label">
        
        <!--%: Html.LabelFor(model => model.telefone) %>
        </div>
        <div class="editor-field">
            </div>
            <!--   mudança 26-08
            %: Html.LabelFor(model => model.ddd) %>
        </div-->
        <!--div class="editor-field">
        <!--%: Html.TextBoxFor(model => model.telefone)%>
             <!--%: Html.DropDownList("idTelefone", String.Empty)%-->
            <!--%: Html.ValidationMessageFor(model => model.ddd) %-->
        <!--/div>

        <!--div class="editor-label">
            <!--%: Html.LabelFor(model => model.numero) %-->
        <!--/div>
        <!--div class="editor-field">
            <!--%: Html.EditorFor(model => model.numero) %-->
            <!--%: Html.ValidationMessageFor(model => model.numero) %-->
        <!--/div>
    <!--/fieldset-->

    <fieldset>
        <legend>PM</legend>
    
        <div class="editor-label">
            <!--%: Html.LabelFor(model => model.isPM, String.Empty) %-->
        </div>
        <div class="editor-field">
            <!--%: Html.EditorFor(model => model.isPM) %-->
            
        <%: Html.RadioButtonFor(model => model.isPM, true) %> sim <br />
        <%: Html.RadioButtonFor(model => model.isPM, false) %> não
            <%: Html.ValidationMessageFor(model => model.isPM) %>
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
