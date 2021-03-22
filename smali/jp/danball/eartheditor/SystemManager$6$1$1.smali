.class Ljp/danball/eartheditor/SystemManager$6$1$1;
.super Ljava/lang/Object;
.source "SystemManager.java"

# interfaces
.implements Ljp/danball/eartheditor/SimpleAlertDialog$Listner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/SystemManager$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ljp/danball/eartheditor/SystemManager$6$1;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/SystemManager$6$1;)V
    .locals 0
    .param p1, "this$2"    # Ljp/danball/eartheditor/SystemManager$6$1;

    .prologue
    .line 616
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager$6$1$1;->this$2:Ljp/danball/eartheditor/SystemManager$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    const/4 v2, 0x1

    .line 619
    if-ne p1, v2, :cond_0

    .line 620
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager$6$1$1;->this$2:Ljp/danball/eartheditor/SystemManager$6$1;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v0}, Ljp/danball/eartheditor/SystemManager;->access$000(Ljp/danball/eartheditor/SystemManager;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v0

    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$6$1$1;->this$2:Ljp/danball/eartheditor/SystemManager$6$1;

    iget-object v1, v1, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v1, v1, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v1}, Ljp/danball/eartheditor/SystemManager;->access$400(Ljp/danball/eartheditor/SystemManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/danball/eartheditor/MainActivity;->showRanking(I)V

    .line 621
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager$6$1$1;->this$2:Ljp/danball/eartheditor/SystemManager$6$1;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    iput v2, v0, Ljp/danball/eartheditor/SystemManager;->send_state:I

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager$6$1$1;->this$2:Ljp/danball/eartheditor/SystemManager$6$1;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    iput v2, v0, Ljp/danball/eartheditor/SystemManager;->send_state:I

    goto :goto_0
.end method
