﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Telefone>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Telefone</legend>

        <%: Html.HiddenFor(model => model.idTelefone) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idPessoa, "Pessoa") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idPessoa", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idPessoa) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ddd) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ddd) %>
            <%: Html.ValidationMessageFor(model => model.ddd) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.numero) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.numero) %>
            <%: Html.ValidationMessageFor(model => model.numero) %>
        </div>

        <p>
            <input type="submit" value="Salvar" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Voltar", "Index") %>
</div>

</asp:Content>
