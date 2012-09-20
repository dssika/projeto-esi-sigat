﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.ocorrencia>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>ocorrencia</legend>

    <div class="display-label">data</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.data) %>
    </div>

    <div class="display-label">gravidade</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.gravidade) %>
    </div>

    <div class="display-label">possuiVitimas</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.possuiVitimas) %>
    </div>

    <div class="display-label">endereco</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.endereco.logradouro) %>
    </div>

    <div class="display-label">condicaotempo</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.condicaotempo.descricao) %>
    </div>

    <div class="display-label">condicaovia</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.condicaovia.descricao) %>
    </div>

    <div class="display-label">sinalizacaovia</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.sinalizacaovia.descricao) %>
    </div>

    <div class="display-label">tipoocorrencia</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.tipoocorrencia.descricao) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.idOcorrencia }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>
