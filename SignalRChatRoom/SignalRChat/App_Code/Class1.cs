using Microsoft.AspNet.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1:Hub
{
    public void Hello()
    {
        Clients.All.hello();
    }

    public void SendNotifications(string message)
    {
        Clients.All.receiveNotification(message);
    }
}