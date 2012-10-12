<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.ocorrencia>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Detalhes</h2>

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

    <div class="display-label">Condiçao da via</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.condicaovia.descricao) %>
    </div>

    <div class="display-label">via sinalizada?</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.sinalizacaovia.descricao) %>
    </div>

    <div class="display-label">Tipo da ocorrência</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.tipoocorrencia.descricao) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Editar", "Edit", new { id=Model.idOcorrencia }) %> |
    <%: Html.ActionLink("Voltar "Index") %>
</p>

</asp:Content>
