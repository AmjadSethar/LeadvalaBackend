<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class RefreshData extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'fixit:refresh';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Refreshing fixit data.';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->call('db:wipe');
        $this->info('Importing dummy data..');
        $this->call('fixit:import');
        $this->call('optimize:clear');
        $this->call('storage:link');
    }
}
