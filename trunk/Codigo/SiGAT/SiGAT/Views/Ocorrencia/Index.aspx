<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SiGAT.Models.ocorrencia>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Ocorrência</h2>

<p>
    <%: Html.ActionLink("Cadastrar novo", "Create") %>
</p>
<table>
    <tr>
        <th>
            Data
        </th>
        <th>
            Gravidade
        </th>
        <th>
            Possui Vitimas?
        </th>
        <th>
            Endereço
        </th>
        <th>
            Condição do tempo
        </th>
        <th>
            Condição da via
        </th>
        <th>
            Via sinalizada?
        </th>
        <th>
            Tipo de ocorrência
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.data) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.gravidade) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.possuiVitimas) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.endereco.logradouro) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.condicaotempo.descricao) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.condicaovia.descricao) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.sinalizacaovia.descricao) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.tipoocorrencia.descricao) %>
        </td>
        <td>
            <%: Html.ActionLink("Editar", "Edit", new { id=item.idOcorrencia }) %> |
            <%: Html.ActionLink("Detalhes", "Details", new { id=item.idOcorrencia }) %> |
            <%: Html.ActionLink("Excluir", "Delete", new { id=item.idOcorrencia }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
