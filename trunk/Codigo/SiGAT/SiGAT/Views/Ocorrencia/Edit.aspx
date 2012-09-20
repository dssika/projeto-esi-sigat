<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.ocorrencia>" %>

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
        <legend>ocorrencia</legend>

        <%: Html.HiddenFor(model => model.idOcorrencia) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.data) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.data) %>
            <%: Html.ValidationMessageFor(model => model.data) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.gravidade) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.gravidade) %>
            <%: Html.ValidationMessageFor(model => model.gravidade) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.possuiVitimas) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.possuiVitimas) %>
            <%: Html.ValidationMessageFor(model => model.possuiVitimas) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idEndereco, "endereco") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idEndereco", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idEndereco) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idCondicaoTempo, "condicaotempo") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idCondicaoTempo", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idCondicaoTempo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idCondicaoVia, "condicaovia") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idCondicaoVia", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idCondicaoVia) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idSinalizacaoVia, "sinalizacaovia") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idSinalizacaoVia", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idSinalizacaoVia) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idTipoOcorrencia, "tipoocorrencia") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idTipoOcorrencia", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idTipoOcorrencia) %>
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
