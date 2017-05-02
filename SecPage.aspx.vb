
Partial Class SecPage
    Inherits System.Web.UI.Page

   
   
   

    Protected Sub DetailsView_customers_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView_customers.ItemDeleted
        Response.Redirect("SecPage.aspx")
    End Sub
End Class
