<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Trote>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Cadastrar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Cadastro</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Trote</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.data, "Data") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.data) %>
            <%: Html.ValidationMessageFor(model => model.data) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.telefoneRequisitante, "Telefone do Requisitante") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.telfoneRequisitante) %>
            <%: Html.ValidationMessageFor(model => model.telfoneRequisitante) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.deslocouViatura,"Deslocou a viatura para o local?") %>

            </div>
        <div class="editor-field">
            <%: Html.RadioButtonFor(model => model.deslocouViatura, true) %> sim <br />
            <%: Html.RadioButtonFor(model => model.deslocouViatura, false)%> não
            <%: Html.ValidationMessageFor(model => model.deslocouViatura)%>
           
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idEndereco, "Endereço") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idEndereco", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idEndereco) %>
        </div>

        <p>
            <input type="submit" value="Cadastrar" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Voltar", "Index") %>
</div>

</asp:Content>
