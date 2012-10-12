<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SiGAT.Models.Pessoa>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Envolvidos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Cadastro de Pessoa</h2>

<p>
    <%: Html.ActionLink("Cadastrar nova Pessoa", "Create") %>
</p>
<table>
    <tr>
        <th>
            Nome
        </th>
        <th>
            CPF
        </th>
        <th>
            CNH
        </th>
        <th>
            E-mail
        </th>
        <th>
            Data de Nascimento
        </th>
        <th>
            Endereço
        </th>
        <th>
            É Policial Militar?
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.nome) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.cpf) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.cnh) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.email) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.dataNascimento) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.endereco.logradouro) %>
        </td>
        <td>
            <% 
                if (item.isPM == true)
                {
            %>
                    sim  
            <% }
                else
            %>
                    não
            
        </td>
        <td>
            <%: Html.ActionLink("editar", "Edit", new { id = item.idPessoa })%> |
            <%: Html.ActionLink("detalhes", "Details", new { id=item.idPessoa }) %> |
            <%: Html.ActionLink("excluir", "Delete", new { id=item.idPessoa }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
