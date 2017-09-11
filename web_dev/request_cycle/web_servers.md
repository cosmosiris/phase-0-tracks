What are some of the key design philosophies of the Linux operating system?
    ---Small is Beautiful
    ---Each Program Does One Thing Well
    ---Prototype as Soon as Possible
    ---Choose Portability Over Efficiency
    ---Store Data in Flat Text Files
    ---Use Software Leverage
    ---Use Shell Scripts to Increase Leverage and Portability
    ---Avoid Captive User Interfaces
    ---Make Every Program a Filter
    source: https://opensource.com/business/15/2/how-linux-philosophy-affects-you

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
    **A Virtual private server (VPS) is a type of web hosting server where hosting is done by segregating a main physical server into multiple virtual servers. Each server in the system gets their part of resources based on custom requirements. Each part of this VPS has capabilities of performing independent operations with its own operating system and hardware resources dedicated to it. These resources are completely saturated from the other servers on the same platform.

    ** Advantages over the shared server and the dedicated server
      -Cost: As it receives a fraction of the actual dedicated server, the cost of such servers is much less than with dedicated servers.
      -Segregation: Each virtual server is segregated from other servers on the same platform and there is no direct effect of one server’s activity and customization over the other server.
      -Performance: The performance of VPS is noticeably higher than the shared server and little lower than the dedicated server. As it has allocated amount of resources in terms of CPU usage, memory and RAM; virtualization works best for small and medium size website.
      -Security: Another advantage of this system is its security. As individual servers are separated with each other, each website gets its own operating system and resources. This makes difficult for another server to invade the security.

  **Disadvantages
      -The leading disadvantage of such system is its maintenance problem. As each website has its own operating system and other software, it is very difficult for web host to maintain all the operating system and ensuring maximum uptime. There are many factors attached to it like security, maintenance and updates.
      -Sometimes the hosting provider does not provide the allocated resources. This is because most of the time virtual server does not use its full resources.
      -It becomes difficult to manage virtual server during the large or unexpected traffic as most of the time resources are taken on the base of minimum requirements.
      -Break of security or software failure can cause a larger issue by affecting one server’s activity to other.
      source: http://vmblog.com/archive/2011/11/18/know-the-advantages-and-disadvantages-of-virtual-private-server.aspx#.WbcLL9OGPOQ
      more sources:
        **http://www.webhostinghub.com/web-hosting-guide/the-pros-and-cons-of-vps-web-hosting
        **https://www.eukhost.com/blog/webhosting/virtual-private-servers-advantages-and-disadvantages/

  Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system
    When you log in as your own user account, programs you run are restricted from writing to the rest of the system – they can only write to your home folder. You can’t modify system files without gaining root permissions. This helps keep your computer secure. For example, if the Firefox browser had a security hole and you were running it as root, a malicious web page would be able to write to all files on your system, read files in other user account’s home folders, and replace system commands with compromised ones. In contrast, if you’re logged in as a limited user account, the malicious web page wouldn’t be able to do any of those things – it would only be able to inflict damage in your home folder. While this could still cause problems, it’s much better than having your entire system compromised. This also helps protect you against malicious or just plain buggy applications. For example, if you run an application that decides to delete all files it has access to (perhaps it contains a nasty bug), the application will wipe our your home folder. This is bad, but if you have backups (which you should!), it’s fairly easy to restore the files in your home folder. However, if the application had root access, it could delete every single file on your hard drive, necessitating a full reinstall.