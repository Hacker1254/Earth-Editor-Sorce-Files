.class Ljp/danball/eartheditor/SystemManager$6$1$2;
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
    .line 634
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager$6$1$2;->this$2:Ljp/danball/eartheditor/SystemManager$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 637
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager$6$1$2;->this$2:Ljp/danball/eartheditor/SystemManager$6$1;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    const/4 v1, -0x1

    iput v1, v0, Ljp/danball/eartheditor/SystemManager;->send_state:I

    .line 638
    return-void
.end method
