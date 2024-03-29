/**
 * Demon Helmet - TFS 1.4 - a free and open-source MMORPG server emulator
 * Copyright (C) 2019  Mark Samman <mark.samman@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#ifndef FS_DATABASETASKS_H_9CBA08E9F5FEBA7275CCEE6560059576
#define FS_DATABASETASKS_H_9CBA08E9F5FEBA7275CCEE6560059576

#include <condition_variable>
#include "thread_holder_base.h"
#include "database.h"
#include "enums.h"

struct DatabaseTask {
	DatabaseTask(std::string&& initQuery, std::function<void(DBResult_ptr, bool)>&& initCallback, bool initStore) :
		query(std::move(initQuery)), callback(std::move(initCallback)), store(initStore) {}

	std::string query;
	std::function<void(DBResult_ptr, bool)> callback;
	bool store;
};

class DatabaseTasks : public ThreadHolder<DatabaseTasks>
{
	public:
		DatabaseTasks();
    bool SetDatabaseInterface(Database *database);
    void start();
    void startThread();
    void flush();
    void shutdown();

		void addTask(std::string query, std::function<void(DBResult_ptr, bool)> callback = nullptr, bool store = false);

		void threadMain();
	private:
		void runTask(const DatabaseTask& task);

		Database *db_;
		std::thread thread;
		std::list<DatabaseTask> tasks;
		std::mutex taskLock;
		std::condition_variable taskSignal;
};

extern DatabaseTasks g_databaseTasks;

#endif
