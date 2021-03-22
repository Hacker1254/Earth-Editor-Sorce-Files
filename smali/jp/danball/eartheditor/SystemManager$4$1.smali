.class Ljp/danball/eartheditor/SystemManager$4$1;
.super Ljava/lang/Object;
.source "SystemManager.java"

# interfaces
.implements Ljp/danball/eartheditor/SimpleAlertDialog$Listner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/SystemManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/danball/eartheditor/SystemManager$4;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/SystemManager$4;)V
    .locals 0
    .param p1, "this$1"    # Ljp/danball/eartheditor/SystemManager$4;

    .prologue
    .line 458
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager$4$1;->this$1:Ljp/danball/eartheditor/SystemManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 461
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager$4$1;->this$1:Ljp/danball/eartheditor/SystemManager$4;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$4;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$4$1;->this$1:Ljp/danball/eartheditor/SystemManager$4;

    iget v1, v1, Ljp/danball/eartheditor/SystemManager$4;->val$state_tmp:I

    iput v1, v0, Ljp/danball/eartheditor/SystemManager;->photo_state:I

    .line 462
    return-void
.end method
