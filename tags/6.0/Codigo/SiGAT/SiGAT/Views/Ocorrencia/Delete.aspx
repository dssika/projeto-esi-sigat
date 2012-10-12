<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.ocorrencia>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>DExcluir</h2>

<h3>Confirma exclusão?</h3>
<fieldset>
    <legend>Ocorrência</legend>

    <div class="display-label">Data</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.data) %>
    </div>

    <div class="display-label">Gravidade</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.gravidade) %>
    </div>

    <div class="display-label">Possui Vitimas?</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.possuiVitimas) %>
    </div>

    <div class="display-label">Endereço</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.endereco.logradouro) %>
    </div>

    <div class="display-label">Condição do tempo</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.condicaotempo.descricao) %>
    </div>

    <div class="display-label">Condição da via</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.condicaovia.descricao) %>
    </div>

    <div class="display-label">Via Sinalizada?</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.sinalizacaovia.descricao) %>
    </div>

    <div class="display-label">Tipo de Ocorrência</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.tipoocorrencia.descricao) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Excluir" /> |
        <%: Html.ActionLink("Voltar", "Index") %>
    </p>
<% } %>

</asp:Content>
