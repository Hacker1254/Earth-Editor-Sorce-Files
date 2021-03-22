.class Ljp/danball/eartheditor/AdReward$3;
.super Ljava/lang/Object;
.source "AdReward.java"

# interfaces
.implements Ljp/danball/eartheditor/DialogSimple$Listner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/AdReward;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/AdReward;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/AdReward;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/AdReward;

    .prologue
    .line 85
    iput-object p1, p0, Ljp/danball/eartheditor/AdReward$3;->this$0:Ljp/danball/eartheditor/AdReward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljp/danball/eartheditor/DialogSimple$State;)V
    .locals 1
    .param p1, "state"    # Ljp/danball/eartheditor/DialogSimple$State;

    .prologue
    .line 88
    sget-object v0, Ljp/danball/eartheditor/DialogSimple$State;->Ok:Ljp/danball/eartheditor/DialogSimple$State;

    if-ne p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Ljp/danball/eartheditor/AdReward$3;->this$0:Ljp/danball/eartheditor/AdReward;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdReward;->play()V

    .line 91
    :cond_0
    return-void
.end method
