﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Trote>" %>

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
        <legend>Trote</legend>

        <%: Html.HiddenFor(model => model.idTrote) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.data) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.data) %>
            <%: Html.ValidationMessageFor(model => model.data) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.telfoneRequisitante) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.telfoneRequisitante) %>
            <%: Html.ValidationMessageFor(model => model.telfoneRequisitante) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.deslocouViatura) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.deslocouViatura) %>
            <%: Html.ValidationMessageFor(model => model.deslocouViatura) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idEndereco, "endereco") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idEndereco", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idEndereco) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>
