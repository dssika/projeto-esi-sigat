<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Veiculo>" %>

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
        <legend>Veiculo</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.renavan) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.renavan) %>
            <%: Html.ValidationMessageFor(model => model.renavan) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.placa) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.placa) %>
            <%: Html.ValidationMessageFor(model => model.placa) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.marca) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.marca) %>
            <%: Html.ValidationMessageFor(model => model.marca) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.modelo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.modelo) %>
            <%: Html.ValidationMessageFor(model => model.modelo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.anoFabricacao) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.anoFabricacao) %>
            <%: Html.ValidationMessageFor(model => model.anoFabricacao) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.tipo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.tipo) %>
            <%: Html.ValidationMessageFor(model => model.tipo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idProprietario, "pessoa") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idProprietario", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idProprietario) %>
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
