<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Endereco>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Endereco</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.logradouro) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.logradouro) %>
            <%: Html.ValidationMessageFor(model => model.logradouro) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.bairro) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.bairro) %>
            <%: Html.ValidationMessageFor(model => model.bairro) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.cep) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.cep) %>
            <%: Html.ValidationMessageFor(model => model.cep) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idCidade, "cidade") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idCidade", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idCidade) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>
