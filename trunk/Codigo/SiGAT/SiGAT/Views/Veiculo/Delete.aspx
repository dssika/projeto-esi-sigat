<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Veiculo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Excluir
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Excluir</h2>

<h3>Confirma a Exclusão?</h3>
<fieldset>
    <legend>Veiculo</legend>

    <div class="display-label">Renavan</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.renavan) %>
    </div>

    <div class="display-label">Placa</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.placa) %>
    </div>

    <div class="display-label">Marca</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.marca) %>
    </div>

    <div class="display-label">Modelo</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.modelo) %>
    </div>

    <div class="display-label">Ano de Fabricação</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.anoFabricacao) %>
    </div>

    <div class="display-label">Tipo</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.tipo) %>
    </div>

    <div class="display-label">Pessoa</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.pessoa.nome) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Excluir" /> |
        <%: Html.ActionLink("Voltar", "Index") %>
    </p>
<% } %>

</asp:Content>
