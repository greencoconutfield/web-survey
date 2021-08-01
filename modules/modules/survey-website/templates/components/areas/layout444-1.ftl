${cmsfn.decode(content).desc!""}

[#if content.answer?has_content]
<button type="button"   style="background-color: #216478 ! important; border-color: #216478;" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
 Answer
</button>

<!-- Modal -->

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Answer</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ${cmsfn.decode(content).answer!""}
      </div>
    </div>
  </div>
</div>
[/#if]